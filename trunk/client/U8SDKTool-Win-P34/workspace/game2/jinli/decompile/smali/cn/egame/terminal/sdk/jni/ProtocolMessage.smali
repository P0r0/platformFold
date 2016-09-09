.class public Lcn/egame/terminal/sdk/jni/ProtocolMessage;
.super Ljava/lang/Object;
.source "ProtocolMessage.java"


# instance fields
.field public arg1:I

.field public arg2:I

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/egame/terminal/sdk/jni/ProtocolMessage;->obj:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcn/egame/terminal/sdk/jni/ProtocolMessage;->obj:Ljava/lang/Object;

    .line 23
    iput p2, p0, Lcn/egame/terminal/sdk/jni/ProtocolMessage;->arg1:I

    .line 24
    iput p3, p0, Lcn/egame/terminal/sdk/jni/ProtocolMessage;->arg2:I

    .line 25
    return-void
.end method
