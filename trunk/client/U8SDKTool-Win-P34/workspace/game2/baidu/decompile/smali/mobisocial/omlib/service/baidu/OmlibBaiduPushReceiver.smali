.class public Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmlibBaiduPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;,
        Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;,
        Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$BaiduResponse;
    }
.end annotation


# static fields
.field private static BAIDU_COMPONENTS:[Ljava/lang/String; = null

.field static final BAIDU_PUSH_KEY:Ljava/lang/String; = "Hosvk2EyOHi0YG0wZK0wSSUj"

.field static final TAG:Ljava/lang/String; = "omlib-baidu-push"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.android.pushservice.PushService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.android.pushservice.PushServiceReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.android.pushservice.RegistrationReceiver"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.baidu.android.pushservice.CommandService"

    aput-object v2, v0, v1

    sput-object v0, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->BAIDU_COMPONENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 208
    return-void
.end method

.method private static disablePushComponents(Landroid/content/Context;)V
    .registers 11
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 89
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_5
    sget-object v5, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->BAIDU_COMPONENTS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_28

    aget-object v1, v5, v4

    .line 90
    .local v1, "component":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-eq v7, v9, :cond_1d

    .line 92
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_20

    .line 89
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 95
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/lang/String;
    :catch_20
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "omlib-baidu-push"

    const-string v5, "Failed to enable baidu push components"

    invoke-static {v4, v5, v2}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_28
    return-void
.end method

.method private static enablePushComponents(Landroid/content/Context;)V
    .registers 11
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 75
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_5
    sget-object v5, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->BAIDU_COMPONENTS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v6, :cond_28

    aget-object v1, v5, v4

    .line 76
    .local v1, "component":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-eq v7, v9, :cond_1d

    .line 78
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_20

    .line 75
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 81
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/lang/String;
    :catch_20
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "omlib-baidu-push"

    const-string v5, "Failed to enable baidu push components"

    invoke-static {v4, v5, v2}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_28
    return-void
.end method

.method public static isBaiduPushAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/PushManager;->isPushEnabled(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_5

    .line 56
    const/4 v1, 0x1

    .line 58
    :goto_4
    return v1

    .line 57
    :catch_5
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private onMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string v2, "omlib-baidu-push"

    const-string v3, "Received baidu push"

    invoke-static {v2, v3}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "message_string"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "mobisocial.omlib.action.ACCEPT_PUSH_MSG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "sync":Landroid/content/Intent;
    const-string v2, "mobisocial.omlib.extra.MSG_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "mobisocial.omlib.extra.WAKE_LOCK_ID"

    invoke-static {p1}, Lmobisocial/util/PlatformUtils;->obtainWakeLock(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-class v2, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method private onMethodBindReceived(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "error_code"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p3, :cond_5d

    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
    :try_start_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 146
    const-class v4, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;

    invoke-static {p4, v4}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
    check-cast v2, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_43

    .line 152
    .restart local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
    :cond_11
    if-eqz v2, :cond_42

    .line 153
    new-instance v1, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;

    invoke-direct {v1}, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;-><init>()V

    .line 154
    .local v1, "job":Lmobisocial/omlib/jobs/PushRegistrationJobHandler;
    iput-object p4, v1, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;->pushKey:Ljava/lang/String;

    .line 155
    new-instance v3, Landroid/content/Intent;

    const-string v4, "mobisocial.omlib.action.SUBMIT_PUSH_KEY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, "register":Landroid/content/Intent;
    const-string v4, "mobisocial.omlib.extra.PUSH_KEY"

    iget-object v5, v2, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;->responseParams:Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive$_ResponseParams;

    iget-object v5, v5, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive$_ResponseParams;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v4, "mobisocial.omlib.extra.PUSH_TYPE"

    const-string v5, "Baidu"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v4, "mobisocial.omlib.extra.WAKE_LOCK_ID"

    invoke-static {p1}, Lmobisocial/util/PlatformUtils;->obtainWakeLock(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-class v4, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    .end local v1    # "job":Lmobisocial/omlib/jobs/PushRegistrationJobHandler;
    .end local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ResponseParams_Receive;
    .end local v3    # "register":Landroid/content/Intent;
    :cond_42
    :goto_42
    return-void

    .line 148
    :catch_43
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "omlib-baidu-push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnMethodBindReceived (success) for BaiduPush "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5d
    const/4 v2, 0x0

    .line 165
    .local v2, "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;
    :try_start_5e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 166
    const-class v4, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;

    invoke-static {p4, v4}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;
    check-cast v2, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6c} :catch_74

    .line 172
    .restart local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;
    :cond_6c
    if-nez v2, :cond_8e

    const-string v4, "(null)"

    :goto_70
    invoke-direct {p0, v4}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->setRegistrationFailed(Ljava/lang/String;)V

    goto :goto_42

    .line 168
    .end local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;
    :catch_74
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "omlib-baidu-push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnMethodBindReceived (failed) for BaiduPush failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "obj":Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;
    :cond_8e
    iget-object v4, v2, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver$ErrorMsg_Receive;->errorMsg:Ljava/lang/String;

    goto :goto_70
.end method

.method private onMethodUnbindReceived(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "error_code"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v0, "omlib-baidu-push"

    const-string v1, "Baidu unbind received"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private onReceiveReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    const-string v3, "method"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "method":Ljava/lang/String;
    const-string v3, "error_msg"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 129
    .local v1, "error_code":I
    const-string v0, ""

    .line 130
    .local v0, "content":Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_22

    .line 131
    new-instance v0, Ljava/lang/String;

    .end local v0    # "content":Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 132
    .restart local v0    # "content":Ljava/lang/String;
    :cond_22
    const-string v3, "method_bind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 133
    invoke-direct {p0, p1, v2, v1, v0}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->onMethodBindReceived(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    :goto_2d
    return-void

    .line 134
    :cond_2e
    const-string v3, "method_unbind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 135
    invoke-direct {p0, p1, v2, v1, v0}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->onMethodUnbindReceived(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2d

    .line 137
    :cond_3a
    const-string v3, "omlib-baidu-push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unused baidu push "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private setRegistrationFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 177
    const-string v0, "omlib-baidu-push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu push registration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static declared-synchronized startBaiduPush(Landroid/content/Context;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 63
    const-class v1, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->enablePushComponents(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    const-string v2, "Hosvk2EyOHi0YG0wZK0wSSUj"

    invoke-static {p0, v0, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 66
    monitor-exit v1

    return-void

    .line 63
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stopBaiduPush(Landroid/content/Context;)V
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 69
    const-class v1, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushManager;->stopWork(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 70
    monitor-exit v1

    return-void

    .line 69
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v1, "omlib-baidu-push"

    const-string v2, "Received Baidu push"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 104
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->setResultCode(I)V

    .line 106
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.baidu.android.pushservice.action.MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 108
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->onMessageReceived(Landroid/content/Context;Landroid/content/Intent;)V

    .line 114
    :goto_20
    return-void

    .line 109
    :cond_21
    const-string v1, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 110
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/service/baidu/OmlibBaiduPushReceiver;->onReceiveReceived(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_20

    .line 112
    :cond_2d
    const-string v1, "omlib-baidu-push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown baidu push type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method
