.class public Lcom/vivo/sdkplugin/PopupMenu;
.super Ljava/lang/Object;


# static fields
.field public static final DELETE_KEY:I = 0x0

.field public static final DELETE_KEY_VALUE:Z = true


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;

.field private h:Ljava/util/List;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/ScrollView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/vivo/sdkplugin/n;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->j:Ljava/lang/String;

    new-instance v0, Lcom/vivo/sdkplugin/l;

    invoke-direct {v0, p0}, Lcom/vivo/sdkplugin/l;-><init>(Lcom/vivo/sdkplugin/PopupMenu;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->a:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/PopupMenu;->i:Landroid/view/View;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "vivo_popup_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->d:Landroid/view/View;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->h:Ljava/util/List;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "translucent_background2"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/vivo/sdkplugin/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/n;-><init>(Lcom/vivo/sdkplugin/PopupMenu;B)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->m:Lcom/vivo/sdkplugin/n;

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->d:Landroid/view/View;

    const-string v1, "items"

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->m:Lcom/vivo/sdkplugin/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/vivo/sdkplugin/m;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/m;-><init>(Lcom/vivo/sdkplugin/PopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->d:Landroid/view/View;

    const-string v1, "vivo_his_scoll_layout"

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->k:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->d:Landroid/view/View;

    const-string v1, "vivo_his_listview"

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/PopupMenu;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->l:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/PopupMenu;)Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->g:Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/PopupMenu;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/PopupMenu;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/sdkplugin/PopupMenu;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_11
    return-void
.end method

.method public getIdByName(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->h:Ljava/util/List;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public setCurUserName(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---------setCurUserName()enter ---------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/sdkplugin/PopupMenu;->j:Ljava/lang/String;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_11
    move v3, v2

    :goto_12
    if-lt v3, v1, :cond_45

    :cond_14
    :goto_14
    iput-object p1, p0, Lcom/vivo/sdkplugin/PopupMenu;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->m:Lcom/vivo/sdkplugin/n;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/n;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->m:Lcom/vivo/sdkplugin/n;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/n;->getCount()I

    move-result v0

    :goto_26
    if-lt v2, v0, :cond_5f

    const/4 v1, 0x3

    if-le v0, v1, :cond_42

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->b:Landroid/content/Context;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->k:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_42
    return-void

    :cond_43
    move v1, v2

    goto :goto_11

    :cond_45
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/sdkplugin/model/MAccountInfo;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/model/MAccountInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/vivo/sdkplugin/PopupMenu;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_14

    :cond_5b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    :cond_5f
    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->m:Lcom/vivo/sdkplugin/n;

    invoke-virtual {v1, v2, v5, v5}, Lcom/vivo/sdkplugin/n;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/sdkplugin/PopupMenu;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26
.end method

.method public setOnItemSelectedListener(Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/PopupMenu;->g:Lcom/vivo/sdkplugin/PopupMenu$OnItemSelectedListener;

    return-void
.end method

.method public showAsDropDown()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/PopupMenu;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/vivo/sdkplugin/PopupMenu;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
