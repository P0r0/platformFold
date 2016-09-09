.class public Lcom/gionee/gsp/service/account/sdk/GioneeAccount;
.super Ljava/lang/Object;
.source "GioneeAccount.java"


# static fields
.field private static final AUTHENTICATE_ACTIVITY_NAME:Ljava/lang/String; = ".activity.AuthenticationActivity"

.field public static final Authentication_CANCEL:I = 0x4

.field public static final Authentication_FAIL:I = 0x3

.field public static final Authentication_SUCCESS:I = 0x2

.field private static final GIONEE_ACCOUTN_PACKAGE_NAME:Ljava/lang/String; = "com.gionee.gsp"

.field private static final GIONEE_ACCOUTN_STATUES_URI:Ljava/lang/String; = "content://com.gionee.account/accountStatus"

.field private static final LOGIN_ACTIVITY_NAME:Ljava/lang/String; = ".activity.LoginActivity"

.field private static final TAG:Ljava/lang/String; = "GioneeAccountSDK"

.field private static mContext:Landroid/content/Context;

.field private static final mInstance:Lcom/gionee/gsp/service/account/sdk/GioneeAccount;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;

    invoke-direct {v0}, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mInstance:Lcom/gionee/gsp/service/account/sdk/GioneeAccount;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gionee/gsp/service/account/sdk/GioneeAccount;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v0, "GioneeAccountSDK"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    sput-object p0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mInstance:Lcom/gionee/gsp/service/account/sdk/GioneeAccount;

    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Landroid/app/Activity;I)V
    .registers 8
    .param p1, "telNo"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestCode"    # I

    .prologue
    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.gionee.gsp"

    const-string v3, "com.gionee.gsp.activity.AuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v0, "{\"tel_no\":\"\"}"

    .line 241
    .local v0, "account":Ljava/lang/String;
    const-string v2, "account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p2, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method

.method public getBaiduPCSAccessToken(Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;)V
    .registers 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    .prologue
    .line 291
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;-><init>(Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    return-void
.end method

.method public getSinaWeiboAccessToken(Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    .prologue
    .line 267
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;-><init>(Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    return-void
.end method

.method public getUserId()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 158
    const/4 v6, 0x0

    .line 160
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v0, "content://com.gionee.account/accountStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    const-string v0, "userid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "userId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_38
    .catchall {:try_start_2 .. :try_end_26} :catchall_4d

    move-result v0

    if-eqz v0, :cond_31

    .line 174
    if-eqz v6, :cond_2f

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v6, 0x0

    :cond_2f
    move-object v8, v9

    .line 172
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "userId":Ljava/lang/String;
    :cond_30
    :goto_30
    return-object v8

    .line 174
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "userId":Ljava/lang/String;
    :cond_31
    if-eqz v6, :cond_30

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v6, 0x0

    goto :goto_30

    .line 169
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "userId":Ljava/lang/String;
    :catch_38
    move-exception v7

    .line 170
    .local v7, "e":Ljava/lang/Exception;
    :try_start_39
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const-string v0, "GioneeAccountSDK"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_4d

    .line 174
    if-eqz v6, :cond_4b

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v6, 0x0

    :cond_4b
    move-object v8, v9

    .line 172
    goto :goto_30

    .line 173
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v0

    .line 174
    if-eqz v6, :cond_54

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    const/4 v6, 0x0

    .line 178
    :cond_54
    throw v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 129
    const/4 v6, 0x0

    .line 131
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v0, "content://com.gionee.account/accountStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    const-string v0, "username"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "username":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_38
    .catchall {:try_start_2 .. :try_end_26} :catchall_4d

    move-result v0

    if-eqz v0, :cond_31

    .line 145
    if-eqz v6, :cond_2f

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v6, 0x0

    :cond_2f
    move-object v8, v9

    .line 143
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "username":Ljava/lang/String;
    :cond_30
    :goto_30
    return-object v8

    .line 145
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "username":Ljava/lang/String;
    :cond_31
    if-eqz v6, :cond_30

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v6, 0x0

    goto :goto_30

    .line 140
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "username":Ljava/lang/String;
    :catch_38
    move-exception v7

    .line 141
    .local v7, "e":Ljava/lang/Exception;
    :try_start_39
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const-string v0, "GioneeAccountSDK"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_4d

    .line 145
    if-eqz v6, :cond_4b

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v6, 0x0

    :cond_4b
    move-object v8, v9

    .line 143
    goto :goto_30

    .line 144
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v0

    .line 145
    if-eqz v6, :cond_54

    .line 146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v6, 0x0

    .line 149
    :cond_54
    throw v0
.end method

.method public isAccountLogin()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 100
    const/4 v6, 0x0

    .line 102
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v0, "content://com.gionee.account/accountStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "status":Ljava/lang/String;
    const-string v0, "login"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_3b
    .catchall {:try_start_2 .. :try_end_28} :catchall_50

    move-result v0

    if-eqz v0, :cond_33

    .line 116
    if-eqz v6, :cond_31

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    .line 107
    :cond_31
    const/4 v0, 0x1

    .line 114
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "status":Ljava/lang/String;
    :goto_32
    return v0

    .line 116
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "status":Ljava/lang/String;
    :cond_33
    if-eqz v6, :cond_39

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    :cond_39
    move v0, v9

    .line 109
    goto :goto_32

    .line 111
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "status":Ljava/lang/String;
    :catch_3b
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3c
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string v0, "GioneeAccountSDK"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_50

    .line 116
    if-eqz v6, :cond_4e

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    :cond_4e
    move v0, v9

    .line 114
    goto :goto_32

    .line 115
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v0

    .line 116
    if-eqz v6, :cond_57

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    const/4 v6, 0x0

    .line 120
    :cond_57
    throw v0
.end method

.method public login(Landroid/app/Activity;I)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 195
    new-instance v0, Landroid/content/ComponentName;

    .line 199
    const-string v3, "com.gionee.gsp"

    .line 203
    const-string v4, "com.gionee.account.activity.LoginActivity"

    .line 195
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, "componetName":Landroid/content/ComponentName;
    :try_start_9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    const-string v3, "mode"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p1, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 223
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1b
    return-void

    .line 214
    :catch_1c
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "\u53ef\u4ee5\u5728\u8fd9\u91cc\u63d0\u793a\u7528\u6237\u6ca1\u6709\u627e\u5230\u5e94\u7528\u7a0b\u5e8f\uff0c\u6216\u8005\u662f\u505a\u5176\u4ed6\u7684\u64cd\u4f5c\uff01"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method

.method public refreshBaiduPCSAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;)V
    .registers 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "invalidToken"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;

    .prologue
    .line 305
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-direct {v0, p3, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;-><init>(Lcom/gionee/gsp/service/account/sdk/listener/BaiduPCSListener;Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetBaiduPCSAccessTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 306
    return-void
.end method

.method public refreshSinaWeiboAccessToken(Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;)V
    .registers 6
    .param p1, "invalidToken"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;

    .prologue
    .line 279
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/GioneeAccount;->mContext:Landroid/content/Context;

    invoke-direct {v0, p2, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;-><init>(Lcom/gionee/gsp/service/account/sdk/listener/SinaWeiboListener;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/task/GetSinaWeiboAccessTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 280
    return-void
.end method
