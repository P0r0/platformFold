.class public Lmm/yp/purchasesdk/sms/SMSReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Landroid/os/Message;

.field public static d:Ljava/lang/Boolean;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "aspire.iap.SMS_SEND_ACTIOIN"

    sput-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->j:Ljava/lang/String;

    const-string v0, "aspire.iap.SMS_DELIVERED_ACTION"

    sput-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->k:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SMSReceiver"

    iput-object v0, p0, Lmm/yp/purchasesdk/sms/SMSReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .registers 4

    const-string v0, "SMSReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmm/yp/purchasesdk/e/c;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lmm/yp/purchasesdk/e/c;->g:I

    packed-switch v0, :pswitch_data_24

    const/4 v0, -0x1

    :goto_20
    return v0

    :pswitch_21
    const/16 v0, 0x3e9

    goto :goto_20

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_21
    .end packed-switch
.end method

.method public static a(Landroid/os/Message;)V
    .registers 1

    sput-object p0, Lmm/yp/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    return-void
.end method

.method private b()I
    .registers 2

    sget v0, Lmm/yp/purchasesdk/e/c;->g:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, -0x1

    :goto_6
    return v0

    :pswitch_7
    const/16 v0, 0x4bd

    goto :goto_6

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "SMSReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is receiver finished\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmm/yp/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    :goto_22
    :pswitch_22
    return-void

    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/yp/purchasesdk/sms/SMSReceiver;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :try_start_2f
    invoke-virtual {p0}, Lmm/yp/purchasesdk/sms/SMSReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    :pswitch_36
    goto :goto_22

    :pswitch_37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    sget-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-direct {p0}, Lmm/yp/purchasesdk/sms/SMSReceiver;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4c} :catch_4d

    goto :goto_22

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_22

    :pswitch_52
    const/4 v0, 0x1

    :try_start_53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/sms/b;->a(Ljava/lang/Boolean;)V

    sget-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-direct {p0}, Lmm/yp/purchasesdk/sms/SMSReceiver;->b()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    sget-object v0, Lmm/yp/purchasesdk/sms/SMSReceiver;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_4d

    goto :goto_22

    :pswitch_data_68
    .packed-switch -0x1
        :pswitch_37
        :pswitch_36
        :pswitch_52
        :pswitch_22
    .end packed-switch
.end method
