.class public Lcom/baidu/android/pushservice/e/ab;
.super Lcom/baidu/android/pushservice/e/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/e/ab$a;
    }
.end annotation


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:Lcom/baidu/android/pushservice/e/ab$a;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/d;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/ab;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->a(Landroid/content/Intent;)V

    if-eqz p1, :cond_17

    const-string v0, "error_msg"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/ab;->f:Lcom/baidu/android/pushservice/e/ab$a;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/ab;->f:Lcom/baidu/android/pushservice/e/ab$a;

    invoke-interface {v1, v0}, Lcom/baidu/android/pushservice/e/ab$a;->a(I)V

    :cond_17
    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->a(Ljava/util/HashMap;)V

    const-string v0, "method"

    const-string v1, "settags"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tags"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/ab;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SetTags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetTags param -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/android/pushservice/e/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ab;->f:Lcom/baidu/android/pushservice/e/ab$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/ab;->f:Lcom/baidu/android/pushservice/e/ab$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/android/pushservice/e/ab$a;->a(I)V

    :cond_a
    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
