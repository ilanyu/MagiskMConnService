.class abstract Landroid/support/v7/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p2, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    iput-object p2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    .line 63
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p3

    if-eqz p3, :cond_2a

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p3, :cond_2a

    .line 66
    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_2c

    .line 68
    :cond_2a
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    :goto_2c
    return-void
.end method

.method static synthetic access$001(Landroid/support/v7/widget/AbsActionBarView;I)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/AbsActionBarView;I)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .registers 3

    if-eqz p2, :cond_4

    sub-int/2addr p0, p1

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 4

    const-wide/16 v0, 0xc8

    .line 180
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_9
    return-void
.end method

.method public getAnimatedVisibility()I
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 155
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 225
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .registers 6

    const/high16 v0, -0x80000000

    .line 246
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 74
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AbsActionBarView;->setContentHeight(I)V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_26

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_26
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 119
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    .line 121
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 124
    :cond_b
    iget-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1a

    if-nez p1, :cond_1a

    .line 127
    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_1a
    const/16 p1, 0xa

    if-eq v0, p1, :cond_21

    const/4 p1, 0x3

    if-ne v0, p1, :cond_23

    .line 133
    :cond_21
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_23
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 95
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 97
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 100
    :cond_9
    iget-boolean v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 101
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    .line 103
    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1f

    .line 108
    :cond_1d
    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_1f
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .registers 8

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 262
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p5, :cond_15

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    .line 265
    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1b

    :cond_15
    add-int p4, p2, v0

    add-int/2addr v1, p3

    .line 267
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1b
    if-eqz p5, :cond_1e

    neg-int v0, v0

    :cond_1e
    return v0
.end method

.method public postShowOverflowMenu()V
    .registers 2

    .line 202
    new-instance v0, Landroid/support/v7/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AbsActionBarView$1;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 140
    iput p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 186
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_12

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_f

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 190
    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 6

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_2c

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    .line 165
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 167
    :cond_15
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 169
    iget-object p2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {p2, v0, p1}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object v0

    .line 172
    :cond_2c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 174
    iget-object p2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {p2, v0, p1}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-object v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method
