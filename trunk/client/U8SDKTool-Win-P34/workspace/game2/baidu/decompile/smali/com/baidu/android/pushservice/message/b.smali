.class public Lcom/baidu/android/pushservice/message/b;
.super Lcom/baidu/android/pushservice/message/c;


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/message/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/message/e;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/android/pushservice/message/e;->d:[B

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage MSG_ID_HANDSHAKE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_26} :catch_4e

    :goto_26
    if-eqz v1, :cond_2e

    const-string v3, "ret"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_2e
    sget-object v1, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage MSG_ID_HANDSHAKE : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6d

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/e/c;->a(Landroid/content/Context;)V

    :cond_4d
    :goto_4d
    return v0

    :catch_4e
    move-exception v1

    sget-object v3, Lcom/baidu/android/pushservice/message/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_26

    :cond_6d
    const/16 v1, 0x138b

    if-ne v0, v1, :cond_77

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/e/c;->a(Landroid/content/Context;)V

    goto :goto_4d

    :cond_77
    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_4d

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/baidu/android/pushservice/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/q;->i(Landroid/content/Context;)V

    goto :goto_4d
.end method
