.class Lcom/baidu/android/pushservice/ac;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[B

.field final synthetic e:[B

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/baidu/android/pushservice/PushServiceReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushServiceReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/baidu/android/pushservice/ac;->i:Lcom/baidu/android/pushservice/PushServiceReceiver;

    iput-object p2, p0, Lcom/baidu/android/pushservice/ac;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/android/pushservice/ac;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/android/pushservice/ac;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/android/pushservice/ac;->d:[B

    iput-object p6, p0, Lcom/baidu/android/pushservice/ac;->e:[B

    iput-object p7, p0, Lcom/baidu/android/pushservice/ac;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/android/pushservice/ac;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/android/pushservice/ac;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ac;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ac;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/android/pushservice/ac;->d:[B

    iget-object v4, p0, Lcom/baidu/android/pushservice/ac;->e:[B

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/android/pushservice/message/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[B)Lcom/baidu/android/pushservice/message/PublicMsg;

    move-result-object v3

    if-nez v3, :cond_18

    const-string v0, "PushServiceReceiver"

    const-string v1, "notification check fail !"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v0, "private"

    iget-object v1, p0, Lcom/baidu/android/pushservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/baidu/android/pushservice/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ac;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ac;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/ac;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/android/pushservice/ac;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_30
    const-string v0, "rich_media"

    iget-object v1, p0, Lcom/baidu/android/pushservice/ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/android/pushservice/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ac;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/android/pushservice/ac;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/ac;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/android/pushservice/PushServiceReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/message/PublicMsg;Ljava/lang/String;)V

    goto :goto_17
.end method
