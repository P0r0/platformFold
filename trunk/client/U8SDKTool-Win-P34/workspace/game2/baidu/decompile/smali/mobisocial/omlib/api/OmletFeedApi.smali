.class public interface abstract Lmobisocial/omlib/api/OmletFeedApi;
.super Ljava/lang/Object;
.source "OmletFeedApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;,
        Lmobisocial/omlib/api/OmletFeedApi$FeedKind;
    }
.end annotation


# virtual methods
.method public abstract acceptInvitationForFeed(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation
.end method

.method public varargs abstract addAccountsToFeed(Landroid/net/Uri;[Ljava/lang/String;)V
.end method

.method public abstract createFeed(Lmobisocial/omlib/api/OmletFeedApi$FeedKind;)Landroid/net/Uri;
.end method

.method public abstract enablePushNotifications(Landroid/net/Uri;Z)V
.end method

.method public abstract getFeedInvitationLink(Landroid/net/Uri;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation
.end method

.method public abstract getFixedMembershipFeed(Ljava/util/List;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation
.end method

.method public abstract getOrCreateFeedWithAccounts(Ljava/util/List;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation
.end method

.method public abstract markFeedActive(Landroid/net/Uri;)V
.end method

.method public abstract markFeedInactive(Landroid/net/Uri;)V
.end method

.method public abstract markFeedRead(Landroid/net/Uri;)V
.end method

.method public abstract removeMemberFromFeed(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract sendActiveStatusIndicator(Landroid/net/Uri;Lmobisocial/omlib/api/OmletFeedApi$StatusIndicator;)V
.end method

.method public abstract setFeedImage(Landroid/net/Uri;Ljava/io/InputStream;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setFeedName(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract subscribeForRealtime(Landroid/net/Uri;Lmobisocial/omlib/interfaces/RealtimeCallback;)V
.end method
