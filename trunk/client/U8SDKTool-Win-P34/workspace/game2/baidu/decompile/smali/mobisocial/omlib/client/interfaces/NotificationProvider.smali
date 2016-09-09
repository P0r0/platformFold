.class public interface abstract Lmobisocial/omlib/client/interfaces/NotificationProvider;
.super Ljava/lang/Object;
.source "NotificationProvider.java"


# virtual methods
.method public abstract beginNotificationBatch()V
.end method

.method public abstract queueAccountChangedEvent(Lmobisocial/omlib/db/entity/OMAccount;)V
.end method

.method public abstract queueFeedChangedEvent(Lmobisocial/omlib/db/entity/OMFeed;)V
.end method

.method public abstract queueFeedMemberChangedEvent(Lmobisocial/omlib/db/entity/OMFeedMember;)V
.end method

.method public abstract queueObjectChangedEvent()V
.end method

.method public abstract queueObjectPushedEvent(Lmobisocial/omlib/db/entity/OMObject;)V
.end method

.method public abstract releaseNotifications()V
.end method
