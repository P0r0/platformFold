.class Lmobisocial/omlib/ui/signin/SignInFragment$1$3;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment$1;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/ui/signin/SignInFragment$1;

    .prologue
    .line 128
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$3;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$3;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    invoke-static {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$000(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    move-result-object v0

    sget-object v1, Lmobisocial/omlib/api/OmletApiManager$Error;->UNKNOWN:Lmobisocial/omlib/api/OmletApiManager$Error;

    invoke-interface {v0, v1}, Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;->onError(Lmobisocial/omlib/api/OmletApiManager$Error;)V

    .line 133
    return-void
.end method
