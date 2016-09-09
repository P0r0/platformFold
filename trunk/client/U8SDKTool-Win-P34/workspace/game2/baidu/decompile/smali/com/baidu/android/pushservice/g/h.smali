.class Lcom/baidu/android/pushservice/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/g/k;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/android/pushservice/g/a;

.field final synthetic e:Lcom/baidu/android/pushservice/g/d;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/g/d;ZLjava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/a;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/h;->e:Lcom/baidu/android/pushservice/g/d;

    iput-boolean p2, p0, Lcom/baidu/android/pushservice/g/h;->a:Z

    iput-object p3, p0, Lcom/baidu/android/pushservice/g/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/android/pushservice/g/h;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/android/pushservice/g/h;->d:Lcom/baidu/android/pushservice/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_41

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/g/h;->a:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/h;->e:Lcom/baidu/android/pushservice/g/d;

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/baidu/android/pushservice/g/d;->a(Lcom/baidu/android/pushservice/g/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/android/pushservice/d/a;->a()Lcom/baidu/android/pushservice/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/android/pushservice/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v2

    :goto_1c
    iget-object v0, p0, Lcom/baidu/android/pushservice/g/h;->d:Lcom/baidu/android/pushservice/g/a;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/baidu/android/pushservice/g/h;->e:Lcom/baidu/android/pushservice/g/d;

    iget-object v3, p0, Lcom/baidu/android/pushservice/g/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/g/h;->b:Ljava/lang/String;

    const/4 v7, -0x1

    move v1, p1

    move-object v5, v2

    invoke-static/range {v0 .. v7}, Lcom/baidu/android/pushservice/g/d;->a(Lcom/baidu/android/pushservice/g/d;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/g/h;->a:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/h;->d:Lcom/baidu/android/pushservice/g/a;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/g/a;->d(ILjava/lang/String;)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/baidu/android/pushservice/g/h;->e:Lcom/baidu/android/pushservice/g/d;

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/h;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/android/pushservice/g/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v6, v2

    goto :goto_1c

    :cond_41
    const-string v0, "error_msg"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_1c

    :cond_4b
    iget-object v1, p0, Lcom/baidu/android/pushservice/g/h;->d:Lcom/baidu/android/pushservice/g/a;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/g/a;->b(ILjava/lang/String;)V

    goto :goto_36
.end method
