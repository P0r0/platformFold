.class public Lcom/u8/sdk/U8Order;
.super Ljava/lang/Object;
.source "U8Order.java"


# instance fields
.field private extension:Ljava/lang/String;

.field private order:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "order"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/u8/sdk/U8Order;->order:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/u8/sdk/U8Order;->order:Ljava/lang/String;

    return-object v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .registers 2
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/u8/sdk/U8Order;->extension:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .registers 2
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/u8/sdk/U8Order;->order:Ljava/lang/String;

    .line 18
    return-void
.end method
