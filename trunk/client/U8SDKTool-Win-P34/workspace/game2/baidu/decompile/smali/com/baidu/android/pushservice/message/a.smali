.class public Lcom/baidu/android/pushservice/message/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/message/a$1;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/message/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/message/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/message/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/android/pushservice/message/g;)Lcom/baidu/android/pushservice/message/c;
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/android/pushservice/message/a$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/message/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    sget-object v1, Lcom/baidu/android/pushservice/message/a;->a:Ljava/lang/String;

    const-string v2, "handleMessage invalid messageType"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-object v0

    :pswitch_14
    new-instance v0, Lcom/baidu/android/pushservice/message/b;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/b;-><init>(Landroid/content/Context;)V

    goto :goto_13

    :pswitch_1c
    new-instance v0, Lcom/baidu/android/pushservice/message/l;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/l;-><init>(Landroid/content/Context;)V

    goto :goto_13

    :pswitch_24
    sget-object v1, Lcom/baidu/android/pushservice/message/a;->a:Ljava/lang/String;

    const-string v2, "handleMessage MSG_ID_HEARTBEAT_CLIENT"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :pswitch_2c
    sget-object v1, Lcom/baidu/android/pushservice/message/a;->a:Ljava/lang/String;

    const-string v2, "handleMessage MSG_ID_TIMY_HEARTBEAT_CLIENT"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :pswitch_34
    new-instance v0, Lcom/baidu/android/pushservice/message/j;

    iget-object v1, p0, Lcom/baidu/android/pushservice/message/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/message/j;-><init>(Landroid/content/Context;)V

    goto :goto_13

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_1c
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method
