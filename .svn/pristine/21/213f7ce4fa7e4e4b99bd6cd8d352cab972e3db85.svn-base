.class public interface abstract Lmobisocial/omlib/api/OmletAuthApi;
.super Ljava/lang/Object;
.source "OmletAuthApi.java"


# virtual methods
.method public abstract authenticateWithServiceToken(Ljava/lang/String;Ljava/lang/String;Lmobisocial/omlib/interfaces/OnAuthenticationCompleteListener;)V
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getLinkedIdentities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/omlib/model/RawIdentity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract logout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract setOnAccountConnectedListener(Lmobisocial/omlib/interfaces/OnAccountConnectedListener;)V
.end method

.method public abstract unlinkIdentity(Lmobisocial/omlib/model/RawIdentity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/AuthenticationException;,
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation
.end method
