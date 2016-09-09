.class Lcom/u8/sdk/UnityU8SDKListener$2;
.super Ljava/lang/Object;
.source "UnityU8SDKListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/UnityU8SDKListener;->tip(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/UnityU8SDKListener;

.field private final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/UnityU8SDKListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UnityU8SDKListener$2;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    iput-object p2, p0, Lcom/u8/sdk/UnityU8SDKListener$2;->val$tip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$2;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    # getter for: Lcom/u8/sdk/UnityU8SDKListener;->context:Lcom/u8/sdk/U8UnityContext;
    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$0(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/UnityU8SDKListener$2;->val$tip:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
