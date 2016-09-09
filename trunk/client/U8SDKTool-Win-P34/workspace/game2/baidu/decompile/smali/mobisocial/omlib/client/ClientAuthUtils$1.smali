.class Lmobisocial/omlib/client/ClientAuthUtils$1;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->addAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;

.field final synthetic val$listener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 89
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$1;->val$listener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAuthUtils$1;->val$listener:Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils;->mAccount:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmobisocial/omlib/interfaces/OnAccountConnectedListener;->onAccountConnected(Ljava/lang/String;)V

    .line 94
    return-void
.end method
