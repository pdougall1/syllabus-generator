class ScheduleBuilder

  def self.build(with: syllabus)
    new(syllabus: with).create_schedule_nodes
  end

  def initialize(syllabus: syllabus)
    @syllabus = syllabus
    @schedule = @syllabus.create_schedule
    @templates = syllabus.schedule_nodes
  end

  def template_node_on_weekday(week_day)
    @templates.select { |t| t.date.wday == week_day }.first
  end

  def create_schedule_nodes
    (@syllabus.start_date.to_date..@syllabus.end_date.to_date).each do |date|
      template_node = template_node_on_weekday(date.wday)
      if template_node.items.length > 0
        schedule_node = @schedule.schedule_nodes.create(date: date)
        template_node.items.each do |template_item|
          schedule_node.items.create(name: template_item.name, content: template_item.content)
        end
      end
    end
  end

end