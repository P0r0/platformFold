.class Lcom/duoku/platform/floatview/DKFloatWindow$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow;

.field private b:J


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;J)V
    .registers 4

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$a;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    iput-wide p2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$a;->b:J

    .line 1472
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$a;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    iget-wide v2, p0, Lcom/duoku/platform/floatview/DKFloatWindow$a;->b:J

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;J)V

    .line 1478
    return-void
.end method
