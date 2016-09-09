.class Lmobisocial/omlib/service/OmlibService$10;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/omlib/api/OmletIdentityApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 377
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContactWithPin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v0, p1, p2}, Lmobisocial/omlib/client/ClientIdentityUtils;->addContactWithPin(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public getInvitationLink()Landroid/net/Uri;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v0}, Lmobisocial/omlib/client/ClientIdentityUtils;->getInvitationLink()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public lookupProfile(Ljava/lang/String;)Lmobisocial/omlib/model/AccountProfile;
    .registers 5
    .param p1, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobisocial/omlib/exception/NetworkException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v2, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v2}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    iget-object v2, v2, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v2, p1}, Lmobisocial/omlib/client/ClientIdentityUtils;->lookupProfileForAccount(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDContactProfile;

    move-result-object v0

    .line 402
    .local v0, "profile":Lmobisocial/longdan/LDProtocols$LDContactProfile;
    if-eqz v0, :cond_1c

    .line 403
    new-instance v1, Lmobisocial/omlib/model/AccountProfile;

    invoke-direct {v1}, Lmobisocial/omlib/model/AccountProfile;-><init>()V

    .line 404
    .local v1, "res":Lmobisocial/omlib/model/AccountProfile;
    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/model/AccountProfile;->name:Ljava/lang/String;

    .line 405
    iget-object v2, v0, Lmobisocial/longdan/LDProtocols$LDContactProfile;->ProfilePictureLink:Ljava/lang/String;

    iput-object v2, v1, Lmobisocial/omlib/model/AccountProfile;->profilePictureLink:Ljava/lang/String;

    .line 408
    .end local v1    # "res":Lmobisocial/omlib/model/AccountProfile;
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public setUserNickname(Ljava/lang/String;)V
    .registers 3
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/ClientIdentityUtils;->setUserNickname(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setUserProfileImage(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "image"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-virtual {v0, p1}, Lmobisocial/omlib/client/ClientIdentityUtils;->setUserProfileImage(Ljava/io/InputStream;)V

    .line 382
    return-void
.end method

.method public uploadAddressBook(Landroid/os/CancellationSignal;)V
    .registers 4
    .param p1, "cancellation"    # Landroid/os/CancellationSignal;

    .prologue
    .line 391
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    iget-object v1, p0, Lmobisocial/omlib/service/OmlibService$10;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lmobisocial/util/PlatformUtils;->uploadAddressBook(Landroid/content/Context;Lmobisocial/omlib/client/LongdanClient;Landroid/os/CancellationSignal;)V

    .line 392
    return-void
.end method
