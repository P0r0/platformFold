.class final Lcom/vivo/sdkplugin/activity/bD;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bD;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-string v0, "FindpwdVerifyPhoneNumActivity"

    const-string v1, "1111111111111111111111111111111111111"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    if-lt v2, v3, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    const-string v4, "FindpwdVerifyPhoneNumActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "number:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   body:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e8

    const-string v4, "\uff0c"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sdx"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-----left: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " right: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bD;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bD;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v4, p0, Lcom/vivo/sdkplugin/activity/bD;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v4}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->a(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bD;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->b(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bD;->a:Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;->c(Lcom/vivo/sdkplugin/activity/FindpwdVerifyPhoneNumActivity;)Lcom/vivo/sdkplugin/activity/bN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/activity/bN;->cancel()V

    :cond_e8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_18
.end method
