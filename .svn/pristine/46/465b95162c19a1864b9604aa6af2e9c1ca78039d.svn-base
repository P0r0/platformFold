.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->loginAccount(Landroid/app/Activity;IZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->val$activity:Landroid/app/Activity;

    .line 1956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .registers 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onCancel()V

    .line 1978
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v0, p1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onComplete(Lorg/json/JSONObject;)V

    .line 1967
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;Landroid/app/Activity;)V

    .line 1971
    invoke-virtual {v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;->start()V

    .line 1972
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->val$gnUiListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v0, p1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onError(Ljava/lang/Exception;)V

    .line 1962
    return-void
.end method
