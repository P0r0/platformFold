.class public abstract Lcom/baidu/sapi2/SapiAccountManager$GlobalAuthorizationListener;
.super Ljava/lang/Object;
.source "SapiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GlobalAuthorizationListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutSuccess(Lcom/baidu/sapi2/SapiAccount;)V
    .registers 2
    .param p1, "session"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 342
    return-void
.end method
