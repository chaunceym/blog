# 构建项目顺序

```bash
bin/rails server 开启服务
遇到无法链接数据库错误

ocker run -v /Users/mengxiangyu/Desktop/my/ruby/fangLearnRuby/morney-rails-data:/var/lib/postgresql/data -p 5001:5432 -e POSTGRES_USER=mxy -e POSTGRES_PASSWORD=xxx -d postgres:12.2
使用docker创建数据库

config/database.yml 写入数据库配置

重新运行 bin/rails server
遇到还未创建数据库错误

运行 bin/rails db:create 创建 dev 和 test 数据库
访问成功
```

# erb 表达式

<% %> 表示其中可以穿插表达式

<%= %> 表示可以穿插值

# 创建表

```bash
bin/rails g model User email:string password_digest:string
```
