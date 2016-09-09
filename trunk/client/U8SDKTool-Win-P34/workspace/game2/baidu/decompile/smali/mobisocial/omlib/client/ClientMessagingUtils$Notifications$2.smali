.class Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;->notifyObjectSent(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

.field final synthetic val$ls:Ljava/util/List;

.field final synthetic val$objectId:J


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Ljava/util/List;J)V
    .registers 6
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    .prologue
    .line 303
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;->val$ls:Ljava/util/List;

    iput-wide p3, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;->val$objectId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 307
    iget-object v1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;->val$ls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/interfaces/MessageDeliveryListener;

    .line 308
    .local v0, "l":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    iget-wide v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$2;->val$objectId:J

    invoke-interface {v0, v2, v3}, Lmobisocial/omlib/interfaces/MessageDeliveryListener;->onObjectSent(J)V

    goto :goto_6

    .line 310
    .end local v0    # "l":Lmobisocial/omlib/interfaces/MessageDeliveryListener;
    :cond_18
    return-void
.end method
