.class Lmobisocial/omlib/ui/signin/SignInFragment$1;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/ui/signin/SignInFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 83
    iput-object p1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 83
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/ui/signin/SignInFragment$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 14
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 87
    move-object v9, p1

    check-cast v9, Lmobisocial/omlib/service/OmlibService;

    .line 88
    .local v9, "omlibService":Lmobisocial/omlib/service/OmlibService;
    invoke-virtual {v9}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 89
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/ui/signin/SignInFragment$1$1;

    invoke-direct {v1, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$1$1;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    :goto_1d
    return-void

    .line 100
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Arcade"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 103
    .local v7, "arguments":Landroid/os/Bundle;
    if-eqz v7, :cond_3e

    const-string v0, "chatscope"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 104
    const-string v0, "OmletChat"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3e
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    iget-object v1, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Type:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$100(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Token:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$200(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lmobisocial/omlib/ui/signin/SignInFragment;->IsValidSSO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    invoke-static {v0, v1, v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$300(Lmobisocial/omlib/ui/signin/SignInFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 108
    invoke-virtual {v9}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    const-string v1, "embedded://auth"

    iget-object v3, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mPartner:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$400(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Type:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$100(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mSSO_Token:Ljava/lang/String;
    invoke-static {v5}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$200(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mFlow:Ljava/lang/String;
    invoke-static {v6}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$500(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lmobisocial/omlib/client/ClientAuthUtils;->getAuthPageBlocking(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;

    move-result-object v10

    .line 112
    .local v10, "resp":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    :goto_7a
    iget-object v0, v10, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->Status:Ljava/lang/String;

    const-string v1, "SIGNED_IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 113
    invoke-virtual {v9}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, v10, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->AccountDetailsResponse:Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/ClientAuthUtils;->acceptAuthDetails(Lmobisocial/longdan/LDProtocols$LDAccountDetailsResponse;)V

    .line 114
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mCallbackHandler:Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;
    invoke-static {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$000(Lmobisocial/omlib/ui/signin/SignInFragment;)Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;->onAuthFinished()V
    :try_end_98
    .catch Lmobisocial/omlib/exception/AuthenticationException; {:try_start_1e .. :try_end_98} :catch_99

    goto :goto_1d

    .line 126
    .end local v2    # "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "arguments":Landroid/os/Bundle;
    .end local v10    # "resp":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    :catch_99
    move-exception v8

    .line 127
    .local v8, "e":Lmobisocial/omlib/exception/AuthenticationException;
    const-string v0, "SignInFragment"

    const-string v1, "Error authenticating"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/ui/signin/SignInFragment$1$3;

    invoke-direct {v1, p0}, Lmobisocial/omlib/ui/signin/SignInFragment$1$3;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1d

    .line 110
    .end local v8    # "e":Lmobisocial/omlib/exception/AuthenticationException;
    .restart local v2    # "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "arguments":Landroid/os/Bundle;
    :cond_b1
    :try_start_b1
    invoke-virtual {v9}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    const-string v1, "embedded://auth"

    iget-object v3, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mPartner:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$400(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    # getter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mFlow:Ljava/lang/String;
    invoke-static {v6}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$500(Lmobisocial/omlib/ui/signin/SignInFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lmobisocial/omlib/client/ClientAuthUtils;->getAuthPageBlocking(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;

    move-result-object v10

    .restart local v10    # "resp":Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;
    goto :goto_7a

    .line 116
    :cond_cc
    iget-object v0, v10, Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;->Link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 117
    .local v11, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    const-string v1, "k"

    invoke-virtual {v11, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lmobisocial/omlib/ui/signin/SignInFragment;->mQueryKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lmobisocial/omlib/ui/signin/SignInFragment;->access$602(Lmobisocial/omlib/ui/signin/SignInFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lmobisocial/omlib/ui/signin/SignInFragment$1;->this$0:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlib/ui/signin/SignInFragment$1$2;

    invoke-direct {v1, p0, v10}, Lmobisocial/omlib/ui/signin/SignInFragment$1$2;-><init>(Lmobisocial/omlib/ui/signin/SignInFragment$1;Lmobisocial/longdan/LDProtocols$LDGetAppSigninLinkResponse;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_eb
    .catch Lmobisocial/omlib/exception/AuthenticationException; {:try_start_b1 .. :try_end_eb} :catch_99

    goto/16 :goto_1d
.end method
