.class Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseActionView(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public expandActionView(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 2

    .line 177
    invoke-static {p1}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 3

    .line 172
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    .line 167
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    return-object p1
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 3

    .line 162
    invoke-static {p1, p2}, Landroid/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    return-void
.end method
