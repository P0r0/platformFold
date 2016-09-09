.class Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;
.super Ljava/lang/Object;
.source "ClientMessagingUtils.java"

# interfaces
.implements Lmobisocial/omlib/interfaces/Sendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientMessagingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OMSendable"
.end annotation


# instance fields
.field final mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDObjects$BlobReferenceObj;",
            ">;"
        }
    .end annotation
.end field

.field private final mMsgId:[B

.field final mType:Ljava/lang/String;

.field public final obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

.field final synthetic this$0:Lmobisocial/omlib/client/ClientMessagingUtils;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;)V
    .registers 5
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 714
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mType:Ljava/lang/String;

    .line 716
    new-instance v0, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    invoke-direct {v0}, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;-><init>()V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mAttachments:Ljava/util/List;

    .line 718
    invoke-static {}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateMessageId()[B

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mMsgId:[B

    .line 719
    invoke-direct {p0}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->setCommonFields()V

    .line 720
    return-void
.end method

.method public constructor <init>(Lmobisocial/omlib/client/ClientMessagingUtils;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "content"    # Lorg/json/JSONObject;

    .prologue
    .line 722
    iput-object p1, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mType:Ljava/lang/String;

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mAttachments:Ljava/util/List;

    .line 725
    invoke-static {}, Lmobisocial/omlib/client/ClientMessagingUtils;->generateMessageId()[B

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mMsgId:[B

    .line 726
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    invoke-static {v0, v1}, Lmobisocial/serialization/SerializationUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    iput-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    .line 727
    invoke-direct {p0}, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->setCommonFields()V

    .line 728
    return-void
.end method

.method private setCommonFields()V
    .registers 6

    .prologue
    .line 731
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v2}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/client/LongdanClient;->getDbHelper()Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v2

    const-class v3, Lmobisocial/omlib/db/entity/OMAccount;

    iget-object v4, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->this$0:Lmobisocial/omlib/client/ClientMessagingUtils;

    # getter for: Lmobisocial/omlib/client/ClientMessagingUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v4}, Lmobisocial/omlib/client/ClientMessagingUtils;->access$000(Lmobisocial/omlib/client/ClientMessagingUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Auth:Lmobisocial/omlib/client/ClientAuthUtils;

    invoke-virtual {v4}, Lmobisocial/omlib/client/ClientAuthUtils;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v2

    check-cast v2, Lmobisocial/omlib/db/entity/OMAccount;

    iget-wide v0, v2, Lmobisocial/omlib/db/entity/OMAccount;->profileVersion:J

    .line 732
    .local v0, "profileVersion":J
    iget-object v2, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;->profileVersion:Ljava/lang/Long;

    .line 733
    return-void
.end method


# virtual methods
.method addAttachment(Lmobisocial/longdan/LDObjects$BlobReferenceObj;)V
    .registers 3
    .param p1, "o"    # Lmobisocial/longdan/LDObjects$BlobReferenceObj;

    .prologue
    .line 751
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mAttachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    return-void
.end method

.method public getAttachments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobisocial/longdan/LDObjects$BlobReferenceObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public getBody()[B
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->obj:Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;

    invoke-static {v0}, Lmobisocial/serialization/SerializationUtils;->toJson(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mMsgId:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Lmobisocial/omlib/client/ClientMessagingUtils$OMSendable;->mType:Ljava/lang/String;

    return-object v0
.end method
