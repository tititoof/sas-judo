export interface IInternalLink {
  name: string
  route: string
  icon: string
}

export interface IExternalLink {
  name: string
  url: string
  img: string
}

export interface IStory {
  name: string
  description: string
  icon: string
  color: string
  small: boolean
}

export interface ITaskPlanning {
  dateStart: string
  dateEnd: string
  styleObj: {
    height: string
    top: string
    backgroundColor: string
  }
  title: string
}

export interface IPost {
  title: string
  content: string
  user: string
}
