.class public Lcom/baidu/android/pushservice/message/a/j;
.super Lcom/baidu/android/pushservice/message/a/c;


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I[B[B)I
    .registers 9

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-static {v0, p2, p1, p5}, Lcom/baidu/android/pushservice/message/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/baidu/android/pushservice/message/a/j;->b:Ljava/lang/String;

    const-string v2, ">>> Show pMsg Notification!"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ">>> Show pMsg Notification!"

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/baidu/android/pushservice/message/a/g;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_4a
    return v0

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Don\'t Show pMsg Notification! --- IsBaiduApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/android/pushservice/message/a/j;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_4a

    :cond_76
    sget-object v0, Lcom/baidu/android/pushservice/message/a/j;->b:Ljava/lang/String;

    const-string v1, ">>> pMsg JSON parsing error!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">>> pMsg JSON parsing error!"

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x2

    goto :goto_4a
.end method
