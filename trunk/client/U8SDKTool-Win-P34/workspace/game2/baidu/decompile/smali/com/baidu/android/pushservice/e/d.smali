.class public abstract Lcom/baidu/android/pushservice/e/d;
.super Lcom/baidu/android/pushservice/e/a;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/a;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/d;->c:Ljava/lang/String;

    invoke-super {p0}, Lcom/baidu/android/pushservice/e/a;->b()Z

    move-result v0

    return v0
.end method
