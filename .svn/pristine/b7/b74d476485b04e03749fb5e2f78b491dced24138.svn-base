.class Lcom/gionee/gsp/service/GnBaseInstallListener$1;
.super Ljava/lang/Object;
.source "GnBaseInstallListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnBaseInstallListener;->onError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnBaseInstallListener$1;->this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gionee/gsp/service/GnBaseInstallListener$1;->this$0:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v0, v0, Lcom/gionee/gsp/service/GnBaseInstallListener;->mGioneeAccountBaseListener:Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u8bf7\u5148\u5b89\u88c5Amigo Play\u5b89\u5168\u63d2\u4ef6"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;->onError(Ljava/lang/Exception;)V

    .line 44
    return-void
.end method
