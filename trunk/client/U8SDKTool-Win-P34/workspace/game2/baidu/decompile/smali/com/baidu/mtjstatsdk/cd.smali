.class public Lcom/baidu/mtjstatsdk/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:D

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Lcom/baidu/mtjstatsdk/game/BDGameDataObject;Ljava/lang/String;Ljava/lang/String;DII)V
    .registers 10

    .prologue
    .line 280
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/cd;->g:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    iput-object p2, p0, Lcom/baidu/mtjstatsdk/cd;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    iput-object p3, p0, Lcom/baidu/mtjstatsdk/cd;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mtjstatsdk/cd;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/baidu/mtjstatsdk/cd;->d:D

    iput p7, p0, Lcom/baidu/mtjstatsdk/cd;->e:I

    iput p8, p0, Lcom/baidu/mtjstatsdk/cd;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 284
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/cd;->a:Lcom/baidu/mtjstatsdk/game/BDGameDataObject;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/cd;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/cd;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/baidu/mtjstatsdk/cd;->d:D

    iget v6, p0, Lcom/baidu/mtjstatsdk/cd;->e:I

    iget v7, p0, Lcom/baidu/mtjstatsdk/cd;->f:I

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/mtjstatsdk/game/BDGameDataObject;->onChargeRequest(Ljava/lang/String;Ljava/lang/String;DII)V

    .line 285
    return-void
.end method
