.class public Lmm/yp/purchasesdk/sms/b;
.super Ljava/lang/Thread;


# static fields
.field private static e:Ljava/lang/Boolean;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private a:Landroid/os/Message;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Message;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "Timer"

    iput-object v0, p0, Lmm/yp/purchasesdk/sms/b;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    iput p1, p0, Lmm/yp/purchasesdk/sms/b;->f:I

    iput-object p2, p0, Lmm/yp/purchasesdk/sms/b;->a:Landroid/os/Message;

    return-void
.end method

.method private a()I
    .registers 2

    sget v0, Lmm/yp/purchasesdk/e/c;->g:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, -0x1

    :goto_6
    return v0

    :pswitch_7
    const/16 v0, 0x4be

    goto :goto_6

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method

.method public static a(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_3
    sget-object v0, Lmm/yp/purchasesdk/sms/b;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lmm/yp/purchasesdk/sms/b;->f:I

    if-lez v0, :cond_27

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    const-wide/16 v0, 0x3e8

    :try_start_18
    invoke-static {v0, v1}, Lmm/yp/purchasesdk/sms/b;->sleep(J)V

    iget v0, p0, Lmm/yp/purchasesdk/sms/b;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmm/yp/purchasesdk/sms/b;->f:I
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_3

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_27
    iget v0, p0, Lmm/yp/purchasesdk/sms/b;->f:I

    if-nez v0, :cond_46

    const-string v0, "Timer"

    const-string v1, "send message failed,is timeout "

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/yp/purchasesdk/sms/b;->a:Landroid/os/Message;

    invoke-direct {p0}, Lmm/yp/purchasesdk/sms/b;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmm/yp/purchasesdk/sms/b;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_46
    return-void
.end method
