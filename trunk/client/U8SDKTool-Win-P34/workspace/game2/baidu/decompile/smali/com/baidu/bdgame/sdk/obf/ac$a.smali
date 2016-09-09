.class Lcom/baidu/bdgame/sdk/obf/ac$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ac$a;->b:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ac$a;->a:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac$a;->b:Landroid/content/Context;

    const/16 v1, 0x47

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac$a;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ac$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/platformsdk/WebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method
