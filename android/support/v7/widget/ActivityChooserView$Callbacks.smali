.class Landroid/support/v7/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .registers 2

    .line 562
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyOnDismissListener()V
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_d

    .line 642
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_d
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 600
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_3c

    .line 601
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 602
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p1, p1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result p1

    .line 604
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_50

    const/high16 v0, 0x80000

    .line 606
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_50

    .line 609
    :cond_3c
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_51

    .line 610
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 611
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    :cond_50
    :goto_50
    return-void

    .line 613
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onDismiss()V
    .registers 3

    .line 634
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_11

    .line 636
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_11
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 568
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 569
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_60

    .line 593
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 572
    :pswitch_13
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    goto :goto_5e

    .line 575
    :pswitch_1c
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 576
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-boolean p1, p1, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz p1, :cond_35

    if-lez p3, :cond_5e

    .line 579
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p1, p1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_5e

    .line 584
    :cond_35
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p1, p1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_42

    :cond_40
    add-int/lit8 p3, p3, 0x1

    .line 585
    :goto_42
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p1, p1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5e

    const/high16 p2, 0x80000

    .line 587
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 588
    iget-object p2, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {p2}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5e
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 620
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_1f

    .line 621
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object p1, p1, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1e

    .line 622
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iput-boolean v0, p1, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 623
    iget-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    :cond_1e
    return v0

    .line 626
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
