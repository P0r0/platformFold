.class Lmobisocial/omlib/ui/signin/SignInFragment$1$2;
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

.field final synthetic val$resp:Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;


# direct methods
.method constructor <init>(Lmobisocial/omlib/ui/signin/SignInFragment$1;Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlib/ui/signin/SignInFragment$1;

    .prologue
    .line 118
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$2;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    iput-object p2, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$2;->val$resp:Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$2;->this$1:Lmobisocial/omlib/ui/signin/SignInFragment$1;

    iget-object v0, v0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$700(Lmobisocial/omlib/ui/signin/SignInFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1$2;->val$resp:Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->Link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    return-void
.end method
