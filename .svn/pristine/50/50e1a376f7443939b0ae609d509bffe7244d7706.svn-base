.class Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;

.field final synthetic val$cb:Lmobisocial/omlib/interfaces/RealtimeCallback;

.field final synthetic val$currentObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;Lmobisocial/omlib/interfaces/RealtimeCallback;Ljava/util/List;)V
    .registers 4
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;

    .prologue
    .line 938
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;->this$1:Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;->val$cb:Lmobisocial/omlib/interfaces/RealtimeCallback;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;->val$currentObjects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 942
    iget-object v0, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;->val$cb:Lmobisocial/omlib/interfaces/RealtimeCallback;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$RealtimeNotifyTask$1;->val$currentObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Lmobisocial/omlib/interfaces/RealtimeCallback;->onRealtimeMessage(Ljava/util/List;)V

    .line 943
    return-void
.end method
