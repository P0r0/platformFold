.class public Lmobisocial/omlib/client/interfaces/DurableMessageProcessor$ProcessedMessageReceipt;
.super Ljava/lang/Object;
.source "DurableMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessedMessageReceipt"
.end annotation


# instance fields
.field public databaseRecord:Lmobisocial/omlib/db/entity/OMMessage;

.field public hashForSend:Ljava/lang/Long;

.field public localObjectId:Ljava/lang/Long;

.field public pushed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
