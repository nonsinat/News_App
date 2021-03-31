// To parse this JSON data, do
//
//     final articalModel = articalModelFromJson(jsonString);

import 'dart:convert';

ArticalModel articalModelFromJson(String str) => ArticalModel.fromJson(json.decode(str));

String articalModelToJson(ArticalModel data) => json.encode(data.toJson());

class ArticalModel {
    ArticalModel({
        this.project,
    });

    List<Project> project;

    factory ArticalModel.fromJson(Map<String, dynamic> json) => ArticalModel(
        project: List<Project>.from(json["project"].map((x) => Project.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "project": List<dynamic>.from(project.map((x) => x.toJson())),
    };
}

class Project {
    Project({
        this.id,
        this.title,
        this.subtitle,
        this.date,
        this.img,
        this.comment,
        this.info,
    });

    String id;
    String title;
    String subtitle;
    String date;
    String img;
    String comment;
    String info;

    factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        date: json["date"],
        img: json["img"],
        comment: json["comment"],
        info: json["info"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "date": date,
        "img": img,
        "comment": comment,
        "info": info,
    };
}
