.class public Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/String; = "returnStsUrl"

.field private static final j:Ljava/lang/String; = "deviceId"


# instance fields
.field public final a:Lcom/xiaomi/accountsdk/account/data/h;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->d:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->e:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->f:Z

    .line 95
    const-class v0, Lcom/xiaomi/accountsdk/account/data/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/h;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->a:Lcom/xiaomi/accountsdk/account/data/h;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4b

    const-string v0, "returnStsUrl"

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->h:Z

    const-string v0, "deviceId"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->g:Ljava/lang/String;

    :cond_4b
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->b:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->d:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->c:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->e:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->a:Lcom/xiaomi/accountsdk/account/data/h;

    .line 84
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->f:Z

    .line 85
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->h:Z

    .line 86
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->h(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$1;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->f:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->a:Lcom/xiaomi/accountsdk/account/data/h;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "returnStsUrl"

    .line 117
    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->h:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "deviceId"

    .line 118
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
