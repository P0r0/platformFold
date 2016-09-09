.class public interface abstract Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
.super Ljava/lang/Object;
.source "DurableMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Omlib-processor"


# virtual methods
.method public abstract beginBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;)V
.end method

.method public abstract endBatch(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
.end method

.method public abstract processDelete(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
.end method

.method public abstract processMessage(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Lmobisocial/omlib/db/entity/OMFeed;Lmobisocial/omlib/db/entity/OMAccount;Lmobisocial/longdan/LDProtocols$LDMessage;Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;)V
.end method
