.class Lmobisocial/omlib/client/ClientAuthUtils$9;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->setAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAuthUtils;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$listeners:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils;Ljava/util/LinkedList;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAuthUtils;

    .prologue
    .line 450
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$9;->this$0:Lmobisocial/omlib/client/ClientAuthUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$9;->val$listeners:Ljava/util/LinkedList;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAuthUtils$9;->val$account:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 454
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$9;->val$listeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/interfaces/OnAccountConnectedListener;

    .line 455
    .local v0, "l":Lmobisocial/omlib/interfaces/OnAccountConnectedListener;
    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$9;->val$account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmobisocial/omlib/interfaces/OnAccountConnectedListener;->onAccountConnected(Ljava/lang/String;)V

    goto :goto_6

    .line 457
    .end local v0    # "l":Lmobisocial/omlib/interfaces/OnAccountConnectedListener;
    :cond_18
    return-void
.end method
