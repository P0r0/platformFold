.class public Lcom/baidu/android/pushservice/e/l;
.super Lcom/baidu/android/pushservice/e/d;


# instance fields
.field e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/d;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/l;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/HashMap;)V
    .registers 6
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

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/l;->e:[Ljava/lang/String;

    array-length v1, v0

    if-nez v1, :cond_15

    const/16 v0, 0x778a

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/l;->a(I)V

    const-string v0, "Delete"

    const-string v1, "Delete param -- msgIds == null"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    const-string v0, "method"

    const-string v2, "delete"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v1, :cond_2e

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/l;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2e
    const-string v0, "msg_ids"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Delete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete param -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/android/pushservice/e/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
