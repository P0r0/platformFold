.class public Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
.super Ljava/lang/Object;
.source "BaiduLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;,
        Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;,
        Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;
    }
.end annotation


# static fields
.field static PREFERENCES:Ljava/lang/String; = null

.field static PREF_BAIDU_LOGIN_SID:Ljava/lang/String; = null

.field static SSO_BDGAME_TYPE:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "BaiduLoginHelper"


# instance fields
.field AUTH_REDIRECT:Ljava/lang/String;

.field activity:Landroid/content/Context;

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "bdgamesdk2"

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->SSO_BDGAME_TYPE:Ljava/lang/String;

    .line 38
    const-string v0, "baidu.login_sid"

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->PREF_BAIDU_LOGIN_SID:Ljava/lang/String;

    .line 40
    const-string v0, "baidu_auth"

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->PREFERENCES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "embedded://auth"

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->AUTH_REDIRECT:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getActivity()Landroid/content/Context;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    return-object v0
.end method

.method private getBaiduLoginUid()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 129
    :try_start_1
    const-string v5, "com.baidu.gamesdk.BDGameSDK"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "bdGameSdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getLoginUid"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 131
    .local v2, "getLoginUid":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 132
    .local v3, "uid":Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1a} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1a} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1a} :catch_37
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1a} :catch_40

    .line 144
    .end local v0    # "bdGameSdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getLoginUid":Ljava/lang/reflect/Method;
    .end local v3    # "uid":Ljava/lang/Object;
    :goto_1a
    return-object v3

    .line 133
    :catch_1b
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "BaiduLoginHelper"

    const-string v6, "Baidu SDK not available"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_23
    move-object v3, v4

    .line 144
    goto :goto_1a

    .line 135
    :catch_25
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "BaiduLoginHelper"

    const-string v6, "Baidu SDK not compatible"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 137
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2e
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "BaiduLoginHelper"

    const-string v6, "Baidu SDK not valid"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 139
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_37
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "BaiduLoginHelper"

    const-string v6, "Baidu SDK fail"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 141
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_40
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "BaiduLoginHelper"

    const-string v6, "Baidu SDK invalid result"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method private getString(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "res"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isValidSSO(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "sso_type"    # Ljava/lang/String;
    .param p1, "sso_token"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "result":Z
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 209
    :cond_6
    :goto_6
    return v3

    .line 202
    :cond_7
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    sget-object v4, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->SSO_BDGAME_TYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 203
    .local v2, "valid_sso_types":[Ljava/lang/String;
    array-length v4, v2

    :goto_f
    if-ge v3, v4, :cond_1a

    aget-object v1, v2, v3

    .line 204
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 205
    const/4 v0, 0x1

    .end local v1    # "type":Ljava/lang/String;
    :cond_1a
    move v3, v0

    .line 209
    goto :goto_6

    .line 203
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f
.end method

.method public static webSigninForBaidu(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "signin":Landroid/content/Intent;
    const-string v1, "flow"

    const-string v2, "UserLogin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method


# virtual methods
.method public createLoginTask(Lmobisocial/omlib/api/OmletApiManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;
    .registers 5
    .param p1, "apiManager"    # Lmobisocial/omlib/api/OmletApiManager;
    .param p2, "successCallback"    # Ljava/lang/Runnable;
    .param p3, "renewSuccessCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 213
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;Lmobisocial/omlib/api/OmletApiManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public dismissProgressDialog()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 96
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 98
    :cond_f
    return-void
.end method

.method public enableOmletViaBaiduToken(Lmobisocial/omlib/api/OmletApi;)Z
    .registers 17
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;,
            Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->isSigninOmlet(Lmobisocial/omlib/api/OmletApi;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 157
    const/4 v0, 0x1

    .line 194
    :goto_7
    return v0

    .line 159
    :cond_8
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlet/integration/AccessTokenUtils;->getSsoToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "token":Ljava/lang/String;
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getBaiduLoginUid()Ljava/lang/String;

    move-result-object v13

    .line 161
    .local v13, "uid":Ljava/lang/String;
    if-eqz v12, :cond_16

    if-nez v13, :cond_1c

    .line 162
    :cond_16
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;)V

    throw v0

    .line 164
    :cond_1c
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->PREFERENCES:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->PREF_BAIDU_LOGIN_SID:Ljava/lang/String;

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v10, p1

    .line 165
    check-cast v10, Lmobisocial/omlib/service/OmlibService;

    .line 167
    .local v10, "omletNetworkService":Lmobisocial/omlib/service/OmlibService;
    :try_start_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v2, "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Arcade"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v4, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->SSO_BDGAME_TYPE:Ljava/lang/String;

    .line 171
    .local v4, "ssoType":Ljava/lang/String;
    move-object v5, v12

    .line 172
    .local v5, "ssoToken":Ljava/lang/String;
    invoke-virtual {v10}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->AUTH_REDIRECT:Ljava/lang/String;

    const-string v3, "BAIDU"

    const-string v6, "AutoCreate"

    invoke-virtual/range {v0 .. v6}, Lmobisocial/omlib/client/ClientAuthUtils;->getAuthPageBlocking(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;

    move-result-object v11

    .line 173
    .local v11, "resp":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    iget-object v0, v11, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->Status:Ljava/lang/String;

    const-string v1, "SIGNED_IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 175
    invoke-virtual {v10}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, v11, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->AccountDetailsResponse:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->acceptAuthDetails(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V

    .line 176
    const/4 v0, 0x1

    goto :goto_7

    .line 178
    :cond_6c
    iget-object v0, v11, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->Status:Ljava/lang/String;

    const-string v1, "CONFIRM_SCOPE_LINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 179
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->webSigninForBaidu(Landroid/content/Context;)V

    .line 180
    const/4 v0, 0x1

    goto :goto_7

    .line 182
    :cond_7f
    iget-object v0, v11, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->Link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 183
    .local v14, "uri":Landroid/net/Uri;
    const-string v0, "k"

    invoke-virtual {v14, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "mQueryKey":Ljava/lang/String;
    iget-object v8, v11, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->RegisterAuthCode:Ljava/lang/String;

    .line 185
    .local v8, "mAuthCode":Ljava/lang/String;
    invoke-virtual {v10}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v8, v9, v3}, Lmobisocial/omlib/client/ClientAuthUtils;->confirmAuthCodeBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Lmobisocial/omlib/exception/AuthenticationException; {:try_start_38 .. :try_end_9c} :catch_9f

    .line 186
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 188
    .end local v2    # "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ssoType":Ljava/lang/String;
    .end local v5    # "ssoToken":Ljava/lang/String;
    .end local v8    # "mAuthCode":Ljava/lang/String;
    .end local v9    # "mQueryKey":Ljava/lang/String;
    .end local v11    # "resp":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_9f
    move-exception v7

    .line 189
    .local v7, "e":Lmobisocial/omlib/exception/AuthenticationException;
    const-string v0, "BaiduLoginHelper"

    const-string v1, "Error authenticating"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    invoke-virtual {v7}, Lmobisocial/omlib/exception/AuthenticationException;->isBadOAuthTokenException()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 191
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;)V

    throw v0

    .line 194
    :cond_b3
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public finishActivityAfterDismissProgressDialog()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 102
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$1;-><init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 109
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 111
    :cond_13
    return-void
.end method

.method public isSigninBaidu()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    invoke-static {v0}, Lmobisocial/omlet/integration/AccessTokenUtils;->getSsoToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSigninOmlet(Lmobisocial/omlib/api/OmletApi;)Z
    .registers 3
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 59
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public needsOmletSignout(Lmobisocial/omlib/api/OmletApi;)Z
    .registers 8
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v3

    invoke-interface {v3}, Lmobisocial/omlib/api/OmletAuthApi;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 64
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->PREFERENCES:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->PREF_BAIDU_LOGIN_SID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "prevLogin":Ljava/lang/String;
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getBaiduLoginUid()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "currentLogin":Ljava/lang/String;
    if-eqz v1, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 67
    :cond_28
    const/4 v2, 0x1

    .line 70
    .end local v0    # "currentLogin":Ljava/lang/String;
    .end local v1    # "prevLogin":Ljava/lang/String;
    :cond_29
    return v2
.end method

.method public showNeedBaiduLoginAgainToast()V
    .registers 4

    .prologue
    .line 86
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    const-string v2, "omp_login_baidu_again"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    return-void
.end method

.method public showNeedBaiduLoginToast()V
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    const-string v2, "omp_login_baidu_first"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method

.method public showProgressDialog()V
    .registers 6

    .prologue
    .line 74
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1e

    .line 75
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    const-string v3, "omp_please_wait"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getString(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 79
    :goto_1d
    return-void

    .line 77
    :cond_1e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1d
.end method

.method public showRegisterFailedToast()V
    .registers 4

    .prologue
    .line 90
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->activity:Landroid/content/Context;

    const-string v2, "omp_register_failed"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getString(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method

.method public webSigninForBaidu()V
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->getActivity()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->webSigninForBaidu(Landroid/content/Context;)V

    .line 119
    return-void
.end method
