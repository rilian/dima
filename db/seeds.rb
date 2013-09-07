Image.delete_all

Image.create(
  image_name: 'test.iso',
  title: 'Docker Image with PostgreSQL',
  desc: 'Just usual installation of postgres inside docker container.',
)

Image.create(
  image_name: 'test.iso',
  title: 'Docker Image with Erlang on Xen',
  desc: 'Amazing Erlang toolchain ready to be run on Xen instance. And all this inside Docker container!',
)
