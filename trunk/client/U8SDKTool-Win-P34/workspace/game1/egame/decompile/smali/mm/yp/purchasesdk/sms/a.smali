.class public Lmm/yp/purchasesdk/sms/a;
.super Ljava/lang/Object;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SMSManager"

    iput-object v0, p0, Lmm/yp/purchasesdk/sms/a;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Message;)V
    .registers 10

    const-string v1, "1065842412"

    iget-object v0, p0, Lmm/yp/purchasesdk/sms/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    :try_start_1e
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lmm/yp/purchasesdk/sms/SMSReceiver;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lmm/yp/purchasesdk/sms/SMSReceiver;->k:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    new-instance v0, Lmm/yp/purchasesdk/sms/b;

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->c()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lmm/yp/purchasesdk/sms/b;-><init>(ILandroid/os/Message;)V

    invoke-virtual {v0}, Lmm/yp/purchasesdk/sms/b;->start()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_59} :catch_5a

    :goto_59
    return-void

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method
