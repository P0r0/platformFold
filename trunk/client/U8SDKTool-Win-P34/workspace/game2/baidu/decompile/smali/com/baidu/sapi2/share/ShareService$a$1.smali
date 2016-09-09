.class Lcom/baidu/sapi2/share/ShareService$a$1;
.super Ljava/lang/Object;
.source "ShareService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/ShareService$a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/ShareService$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/ShareService$a;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareService$a$1;->a:Lcom/baidu/sapi2/share/ShareService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 81
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 82
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;->onReceiveShare()V

    .line 84
    :cond_d
    return-void
.end method
