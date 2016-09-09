.class Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientAuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PinReceiver"
.end annotation


# static fields
.field public static final PIN_REGEX:Ljava/lang/String; = "(\\d{4})"


# instance fields
.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field pin:Ljava/lang/String;

.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;
    .param p2, "mLatch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 526
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 527
    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 528
    return-void
.end method


# virtual methods
.method public getPin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 532
    const-string v7, "Omlib"

    const-string v8, "got broadcast"

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 534
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_64

    .line 535
    const-string v7, "Omlib"

    const-string v8, "bundle not null"

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v7, "pdus"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    .line 537
    .local v5, "pdusObj":[Ljava/lang/Object;
    const-string v7, "(\\d{4})"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 538
    .local v6, "regex":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    array-length v7, v5

    if-ge v2, v7, :cond_79

    .line 539
    aget-object v7, v5, v2

    check-cast v7, [B

    check-cast v7, [B

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 540
    .local v1, "currentMessage":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, "message":Ljava/lang/String;
    sget v7, Lmobisocial/util/OMLog;->LOG_LEVEL:I

    const/4 v8, 0x4

    if-gt v7, v8, :cond_54

    .line 542
    const-string v7, "Omlib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmobisocial/util/OMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_54
    const-string v7, "Omlet"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_64

    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 551
    .end local v1    # "currentMessage":Landroid/telephony/SmsMessage;
    .end local v2    # "i":I
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "pdusObj":[Ljava/lang/Object;
    .end local v6    # "regex":Ljava/util/regex/Pattern;
    :cond_64
    :goto_64
    return-void

    .line 545
    .restart local v1    # "currentMessage":Landroid/telephony/SmsMessage;
    .restart local v2    # "i":I
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "pdusObj":[Ljava/lang/Object;
    .restart local v6    # "regex":Ljava/util/regex/Pattern;
    :cond_65
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 546
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 547
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;->pin:Ljava/lang/String;

    .line 538
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 549
    .end local v1    # "currentMessage":Landroid/telephony/SmsMessage;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "message":Ljava/lang/String;
    :cond_79
    iget-object v7, p0, Lmobisocial/omlib/client/ClientAuthUtils$PinReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_64
.end method
