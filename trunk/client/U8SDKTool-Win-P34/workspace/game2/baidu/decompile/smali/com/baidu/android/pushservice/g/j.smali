.class Lcom/baidu/android/pushservice/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/e/t$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/baidu/android/pushservice/g/a;

.field final synthetic h:I

.field final synthetic i:Lcom/baidu/android/pushservice/g/d;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/g/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/a;I)V
    .registers 10

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/j;->i:Lcom/baidu/android/pushservice/g/d;

    iput-object p2, p0, Lcom/baidu/android/pushservice/g/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/android/pushservice/g/j;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/android/pushservice/g/j;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/android/pushservice/g/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/android/pushservice/g/j;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/android/pushservice/g/j;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/android/pushservice/g/j;->g:Lcom/baidu/android/pushservice/g/a;

    iput p9, p0, Lcom/baidu/android/pushservice/g/j;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/baidu/android/pushservice/g/c;)V
    .registers 12

    const v4, 0x9c42

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/j;->i:Lcom/baidu/android/pushservice/g/d;

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/g/j;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/j;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/g/j;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/android/pushservice/g/j;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/android/pushservice/g/j;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/android/pushservice/g/j;->g:Lcom/baidu/android/pushservice/g/a;

    iget v8, p0, Lcom/baidu/android/pushservice/g/j;->h:I

    invoke-static/range {v0 .. v8}, Lcom/baidu/android/pushservice/g/d;->a(Lcom/baidu/android/pushservice/g/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/a;I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/j;->i:Lcom/baidu/android/pushservice/g/d;

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/g/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/g/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/g/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/g/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/android/pushservice/g/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/j;->g:Lcom/baidu/android/pushservice/g/a;

    if-eqz v1, :cond_2f

    :try_start_35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "subscribe_service"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error"

    const v3, 0x9c42

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "api_key"

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    const-string v3, "GET LIGHTAPPINFO FAILED , TYPE/APPID/APIKEY NOT VALID"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tag"

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_61} :catch_68

    move-result-object v0

    :goto_62
    iget-object v1, p0, Lcom/baidu/android/pushservice/g/j;->g:Lcom/baidu/android/pushservice/g/a;

    invoke-interface {v1, v4, v0}, Lcom/baidu/android/pushservice/g/a;->e(ILjava/lang/String;)V

    goto :goto_2f

    :catch_68
    move-exception v1

    goto :goto_62
.end method
