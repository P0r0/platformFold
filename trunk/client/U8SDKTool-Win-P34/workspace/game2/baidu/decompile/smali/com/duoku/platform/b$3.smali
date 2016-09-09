.class Lcom/duoku/platform/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/b;

.field private final synthetic b:Lcom/duoku/platform/e/a;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/b;Lcom/duoku/platform/e/a;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/b$3;->a:Lcom/duoku/platform/b;

    iput-object p2, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    iput-object p3, p0, Lcom/duoku/platform/b$3;->c:Landroid/app/Activity;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 6

    .prologue
    .line 824
    packed-switch p3, :pswitch_data_1e

    .line 837
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    .line 844
    :goto_8
    return-void

    .line 827
    :pswitch_9
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_17

    .line 829
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    goto :goto_8

    .line 841
    :catch_15
    move-exception v0

    goto :goto_8

    .line 833
    :cond_17
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_15

    goto :goto_8

    .line 824
    nop

    :pswitch_data_1e
    .packed-switch 0x3e9
        :pswitch_9
    .end packed-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 10

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_27

    .line 857
    :goto_5
    check-cast p2, Lcom/duoku/platform/ui/entity/c;

    .line 858
    invoke-virtual {p2}, Lcom/duoku/platform/ui/entity/c;->b()Ljava/util/List;

    move-result-object v0

    .line 859
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 861
    invoke-static {}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c()Lcom/duoku/platform/ui/util/DKDialogUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b$3;->c:Landroid/app/Activity;

    const-wide v4, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/app/Activity;Ljava/util/List;D)V

    .line 863
    :cond_1f
    iget-object v0, p0, Lcom/duoku/platform/b$3;->a:Lcom/duoku/platform/b;

    iget-object v1, p0, Lcom/duoku/platform/b$3;->c:Landroid/app/Activity;

    invoke-static {v0, v1, p2}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;Landroid/app/Activity;Lcom/duoku/platform/ui/entity/c;)V

    .line 865
    return-void

    .line 853
    :catch_27
    move-exception v0

    goto :goto_5
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 877
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 871
    return-void
.end method
