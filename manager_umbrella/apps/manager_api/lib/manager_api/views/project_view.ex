defmodule ManagerApi.ProjectView do
  use ManagerApi, :view
  alias ManagerApi.ProjectView

  def render("index.json", %{projects: projects}) do
    %{data: render_many(projects, ProjectView, "project.json")}
  end

  def render("show.json", %{project: project}) do
    %{data: render_one(project, ProjectView, "project.json")}
  end

  def render("project.json", %{project: project}) do
    %{
      id: project.id,
      title: project.title,
      body: project.body,
      href: project.href,
      color: project.color,
      customBg: project.customBg,
      status: project.status
    }
  end
end
