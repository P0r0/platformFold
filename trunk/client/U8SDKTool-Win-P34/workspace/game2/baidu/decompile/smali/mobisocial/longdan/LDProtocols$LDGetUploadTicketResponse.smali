.class public Lmobisocial/longdan/LDProtocols$LDGetUploadTicketResponse;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDGetUploadTicketResponse"
.end annotation


# instance fields
.field public BlobUploadTicket:Lmobisocial/longdan/LDProtocols$LDBlobUploadTicket;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ut"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3133
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
