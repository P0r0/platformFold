.class Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterestedListeners"
.end annotation


# instance fields
.field blobCount:I

.field blobIndex:I

.field listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lmobisocial/omlib/interfaces/MessageDeliveryListener;",
            ">;"
        }
    .end annotation
.end field

.field sendableReference:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$SendableReference;

.field final synthetic this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;


# direct methods
.method private constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;->this$1:Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;Lmobisocial/omlib/client/ClientMessagingUtils$1;)V
    .registers 3
    .param p1, "x0"    # Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;
    .param p2, "x1"    # Lmobisocial/omlib/client/ClientMessagingUtils$1;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lmobisocial/omlib/client/ClientMessagingUtils$Notifications$InterestedListeners;-><init>(Lmobisocial/omlib/client/ClientMessagingUtils$Notifications;)V

    return-void
.end method
