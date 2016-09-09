.class final Lcom/vivo/sdkplugin/activity/dG;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private synthetic e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dG;-><init>(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/dG;)Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12

    const-wide/16 v6, 0x7d0

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "---------\u9875\u9762finish\u4e86\uff0c\u63a5\u6536\u5230\u6d88\u606f\u4e5f\u4e0d\u5904\u7406\u4e86-----------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    :sswitch_14
    return-void

    :cond_15
    const-string v0, "RegisterOneKeyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "msg.what="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_474

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    goto :goto_14

    :sswitch_36
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "011"

    const-string v3, "1"

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "RegisterOneKeyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msendphone"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->f(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSmsUUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENT_SMS_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->f(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ed

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "vivo\u5e10\u6237\u5feb\u901f\u767b\u5f55\u9a8c\u8bc1:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->g(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->h(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "RegisterOneKeyActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----------message:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lenght: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->f(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :cond_ed
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    goto/16 :goto_14

    :sswitch_f5
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/vivo/sdkplugin/GetSubAccountCenter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetSubAccountCenter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->getSubAccount()V

    goto/16 :goto_14

    :sswitch_11f
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_14

    :sswitch_133
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "013"

    const-string v1, "0"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_14

    :sswitch_150
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->i(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Z

    move-result v0

    if-eqz v0, :cond_189

    const-string v0, "011"

    const-string v1, "404"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_register_phone_failed_tip"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_14

    :cond_189
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/dH;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dH;-><init>(Lcom/vivo/sdkplugin/activity/dG;)V

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_14

    :sswitch_198
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->i(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    const-string v0, "011"

    const-string v1, "404"

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_register_phone_failed_tip"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_14

    :cond_1d1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/dI;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/dI;-><init>(Lcom/vivo/sdkplugin/activity/dG;)V

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_14

    :sswitch_1e0
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    const-string v0, "RegisterOneKeyActivity"

    const-string v1, "Contants.MSG_NETWORK_CONNECT_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    goto/16 :goto_14

    :sswitch_1f5
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_14

    :sswitch_212
    const-string v0, "---------MSG_LOGIN_TEMP_USER_UPDATE------------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v5

    aget-object v0, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-class v3, Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->j(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/activity/dJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dJ;->cancel()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->finish()V

    goto/16 :goto_14

    :sswitch_272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_29b

    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->c:Ljava/lang/String;

    const-string v3, "pwd"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->d:Ljava/lang/String;

    const-string v3, "uuid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setTempUuid(Ljava/lang/String;)V

    :cond_29b
    :try_start_29b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "sk"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a5
    .catch Lorg/json/JSONException; {:try_start_29b .. :try_end_2a5} :catch_347

    move-result-object v1

    :try_start_2a6
    const-string v0, "name"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "openid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->a:Ljava/lang/String;

    const-string v0, "authtoken"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->b:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c0
    .catch Lorg/json/JSONException; {:try_start_2a6 .. :try_end_2c0} :catch_46b

    move-result-object v0

    :goto_2c1
    const-string v3, "004"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1openid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/dG;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*#*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setVisitor(Z)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dG;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setmainOpenId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dG;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setMainToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/dG;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/sdkplugin/activity/dG;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->saveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setLoginSk(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAccountId(Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/sdkplugin/GetSubAccountCenter;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vivo/sdkplugin/GetSubAccountCenter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/GetSubAccountCenter;->getSubAccount()V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->insertAndExportDB()V

    goto/16 :goto_14

    :catch_347
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_34a
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2c1

    :sswitch_351
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->j(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/activity/dJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/dJ;->cancel()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v8}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->k(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setHasLoginSuccHis(Z)V

    const-string v1, ""

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_378
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "subinfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_471

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "nickname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_393
    .catch Lorg/json/JSONException; {:try_start_378 .. :try_end_393} :catch_431

    move-result-object v0

    const/4 v1, 0x0

    :try_start_395
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "openid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->b:Ljava/lang/String;
    :try_end_3ae
    .catch Lorg/json/JSONException; {:try_start_395 .. :try_end_3ae} :catch_469

    :goto_3ae
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setAutoLogin(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setGameNickName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->setToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getreportFirstLogin()Z

    move-result v0

    if-nez v0, :cond_3ef

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->l(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/ReportFirstLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/ReportFirstLoginManager;->reportFirstLogin()V

    :cond_3ef
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->setloginStartTime(Landroid/content/Context;)V

    const-string v0, "002"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1*#*"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->getEndTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-direct {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->insertAndExportDB()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->c(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_43a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->m(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    goto/16 :goto_14

    :catch_431
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_435
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3ae

    :cond_43a
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->n(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;)V

    goto/16 :goto_14

    :sswitch_441
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    invoke-static {v0, v5}, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->b(Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;I)V

    goto/16 :goto_14

    :sswitch_448
    :try_start_448
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dG;->e:Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;

    const-string v2, "activate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vivo/sdkplugin/activity/RegisterOneKeyActivity;->a:Z
    :try_end_461
    .catch Lorg/json/JSONException; {:try_start_448 .. :try_end_461} :catch_463

    goto/16 :goto_14

    :catch_463
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_14

    :catch_469
    move-exception v1

    goto :goto_435

    :catch_46b
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_34a

    :cond_471
    move-object v0, v1

    goto/16 :goto_3ae

    :sswitch_data_474
    .sparse-switch
        0x7 -> :sswitch_f5
        0x8 -> :sswitch_133
        0xb -> :sswitch_36
        0xc -> :sswitch_11f
        0xd -> :sswitch_1e0
        0xe -> :sswitch_351
        0xf -> :sswitch_441
        0x32 -> :sswitch_272
        0x33 -> :sswitch_150
        0x37 -> :sswitch_212
        0x38 -> :sswitch_1f5
        0x194 -> :sswitch_198
        0x410 -> :sswitch_448
        0x411 -> :sswitch_14
    .end sparse-switch
.end method
