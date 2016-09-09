.class Lmobisocial/omlib/ui/signin/SignInFragment$4;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/ui/signin/SignInFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/ui/signin/SignInFragment;

    .prologue
    .line 183
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$4;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 183
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/ui/signin/SignInFragment$4;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 4
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 187
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    sget-object v1, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Idp:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanClient;->incrementInterestForConnection(Lmobisocial/omlib/client/LongdanClient$ConnectionType;)V

    .line 188
    return-void
.end method
