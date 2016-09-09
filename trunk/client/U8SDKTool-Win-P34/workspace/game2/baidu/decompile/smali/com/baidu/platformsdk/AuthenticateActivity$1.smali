.class final Lcom/baidu/platformsdk/AuthenticateActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/AuthenticateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/AuthenticateActivity;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/AuthenticateActivity;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/platformsdk/AuthenticateActivity$1;->a:Lcom/baidu/platformsdk/AuthenticateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/baidu/platformsdk/AuthenticateActivity$1;->a:Lcom/baidu/platformsdk/AuthenticateActivity;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_5
    invoke-static {v1, v0}, Lcom/baidu/platformsdk/AuthenticateActivity;->a(Lcom/baidu/platformsdk/AuthenticateActivity;I)V

    .line 46
    iget-object v0, p0, Lcom/baidu/platformsdk/AuthenticateActivity$1;->a:Lcom/baidu/platformsdk/AuthenticateActivity;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/AuthenticateActivity;->finish()V

    .line 47
    return-void

    .line 45
    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method
