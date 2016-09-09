.class public Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;
.super Landroid/os/AsyncTask;
.source "BaiduLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaiduAutoLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mException:Ljava/lang/Exception;

.field mIsAuthenticated:Z

.field final mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field final mRenewSuccessCallback:Ljava/lang/Runnable;

.field final mSuccessCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;Lmobisocial/omlib/api/OmletApiManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;
    .param p2, "omletApiManager"    # Lmobisocial/omlib/api/OmletApiManager;
    .param p3, "sucessCallback"    # Ljava/lang/Runnable;
    .param p4, "renewSuccessCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 266
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 267
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 268
    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mSuccessCallback:Ljava/lang/Runnable;

    .line 269
    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mRenewSuccessCallback:Ljava/lang/Runnable;

    .line 270
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v2}, Lmobisocial/omlib/api/OmletApiManager;->getConnectedService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/omlib/api/OmletApi;

    .line 286
    .local v1, "omletApi":Lmobisocial/omlib/api/OmletApi;
    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mIsAuthenticated:Z

    if-nez v2, :cond_f

    if-nez v1, :cond_16

    .line 287
    :cond_f
    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mIsAuthenticated:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 304
    :goto_15
    return-object v2

    .line 289
    :cond_16
    :try_start_16
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {v2, v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->enableOmletViaBaiduToken(Lmobisocial/omlib/api/OmletApi;)Z
    :try_end_1b
    .catch Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException; {:try_start_16 .. :try_end_1b} :catch_2f
    .catch Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException; {:try_start_16 .. :try_end_1b} :catch_37

    move-result v2

    if-eqz v2, :cond_29

    .line 292
    const-wide/16 v2, 0x3e8

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_3f
    .catch Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException; {:try_start_20 .. :try_end_23} :catch_2f
    .catch Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException; {:try_start_20 .. :try_end_23} :catch_37

    .line 295
    :goto_23
    const/4 v2, 0x1

    :try_start_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_15

    .line 297
    :cond_29
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2d
    .catch Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException; {:try_start_24 .. :try_end_2d} :catch_2f
    .catch Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException; {:try_start_24 .. :try_end_2d} :catch_37

    move-result-object v2

    goto :goto_15

    .line 299
    :catch_2f
    move-exception v0

    .line 300
    .local v0, "e":Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;
    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mException:Ljava/lang/Exception;

    .line 301
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_15

    .line 302
    .end local v0    # "e":Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;
    :catch_37
    move-exception v0

    .line 303
    .local v0, "e":Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;
    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mException:Ljava/lang/Exception;

    .line 304
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_15

    .line 293
    .end local v0    # "e":Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;
    :catch_3f
    move-exception v2

    goto :goto_23
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 254
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 310
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0}, Lmobisocial/omlib/api/OmletApiManager;->getConnectedService()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 325
    :cond_8
    :goto_8
    return-void

    .line 312
    :cond_9
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->dismissProgressDialog()V

    .line 313
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 314
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mSuccessCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 315
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mSuccessCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    .line 317
    :cond_1e
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mException:Ljava/lang/Exception;

    instance-of v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$NotYetLoginBaiduException;

    if-eqz v0, :cond_2a

    .line 318
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->showNeedBaiduLoginToast()V

    goto :goto_8

    .line 319
    :cond_2a
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mException:Ljava/lang/Exception;

    instance-of v0, v0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BadOAuthTokenException;

    if-eqz v0, :cond_3b

    .line 320
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->showNeedBaiduLoginAgainToast()V

    .line 321
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mRenewSuccessCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lmobisocial/omlet/integration/AccessTokenUtils;->renewToken(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 323
    :cond_3b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->showRegisterFailedToast()V

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 254
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 274
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mOmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v1}, Lmobisocial/omlib/api/OmletApiManager;->getConnectedService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/api/OmletApi;

    .line 275
    .local v0, "omletApi":Lmobisocial/omlib/api/OmletApi;
    if-nez v0, :cond_b

    .line 281
    :cond_a
    :goto_a
    return-void

    .line 277
    :cond_b
    invoke-interface {v0}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->isAuthenticated()Z

    move-result v1

    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mIsAuthenticated:Z

    .line 278
    iget-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->mIsAuthenticated:Z

    if-nez v1, :cond_a

    .line 279
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper$BaiduAutoLoginTask;->this$0:Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/helper/BaiduLoginHelper;->showProgressDialog()V

    goto :goto_a
.end method
