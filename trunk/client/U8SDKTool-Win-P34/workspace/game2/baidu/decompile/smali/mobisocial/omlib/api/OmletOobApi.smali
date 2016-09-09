.class public interface abstract Lmobisocial/omlib/api/OmletOobApi;
.super Ljava/lang/Object;
.source "OmletOobApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
    }
.end annotation


# virtual methods
.method public abstract getSmsParticipation()Z
.end method

.method public abstract isIdentityAvailableForSending(Ljava/lang/String;)Z
.end method

.method public abstract isMessagingAvailable(Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/CancellationSignal;)Lmobisocial/omlib/api/OmletOobApi$MessagingStatus;
.end method

.method public abstract send(Ljava/lang/String;[Ljava/lang/String;Lmobisocial/omlib/sendable/JsonSendable;Ljava/lang/String;Lorg/json/JSONObject;)Z
.end method

.method public abstract setSmsParticipation(Z)V
.end method
